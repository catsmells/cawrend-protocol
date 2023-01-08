$user
$send
$request
$transaction
$post
$nft
$address
$charfield
$staking
$network
$governance
Send = lambda { `send.to " "` }
Request lambda { `request.from " "` }
Transaction = Tx
Transaction = Tx lambda { `tx.of " "` }
# send
Send.Tokensend = Send::Address
Send.Tokensend = Send::Username 
Send.Packet = Send::`tuup ping`
# request
Request.Tokenrequest = Request::Address
Request.Tokenrequest = Request::Username
Request.Tokenrequest = Request::`tuup ping`
# user
Resquest.Address = Request::Address
Resquest.Username = Request::Username
# transaction
Tx.GetID = Transaction::ID
Tx.GetInvolved = Transaction::Involved # get users involved in specified transaction
# network
IsNetworkLive = `tuup ping network`
# staking

# governance

# charfield

# address

# nft
NFT.Address = NFT::Address
NFT.Creator = NFT::Creator
NFT.Publish = NFT::Publish
NFT.Republish = NFT::Republish
# post
