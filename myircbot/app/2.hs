import System.IO
import qualified Network.Socket as N 


myServer = "kornbluth.freenode.net"::String
myPort = 6667 :: N.PortNumber
myChan = "#tutbot-testing" :: String
myNick :: String
myNick = "tutbot" :: String 

main :: IO ()
main = do
    h <- connectTo myServer myPort
    write h "NICK" myNick
    write h "USER" (myNick ++ " 0 * :tutorial bot")
    write h "JOIN" myChan 
    listen h

--Just connects to a server given hostname/portnumber
connectTo :: N.HostName -> N.PortNumber -> IO Handle
connectTo host port = do
    addr : _ <- N.getAddrInfo Nothing (Just host) (Just(show port))
    sock <- N.socket (N.addrFamily addr) (N.addrSocketType addr) (N.addrProtocol addr)
    N.connect sock (N.addrAddress addr)
    N.socketToHandle sock ReadWriteMode

--sends messages to irc server
--socket handle, irc action, arguments
write :: Handle -> String -> String -> IO()
write h cmd args = do
    let msg = cmd ++ " " ++ args ++ "\r\n"
    hPutStr h msg 
    putStr("> " ++ msg) --sends message then outputs for debugging

listen :: Handle -> IO()
listen h = forever $ do 
    --The $ applies lefthand function to right item(s)
    --In this case a = this function, so it applies this function 
    --infinitely
    line <- hGetLine h
    putStrLn line
   where
       forever :: IO() -> IO()
       forever a = do a; forever a 