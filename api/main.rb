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
Tx.Recipient = `received by`
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
Tx.Status = if Tx::Status = True then return ("Complete") else ("Aborted")
Tx.Target = Transaction::Target, puts TxMain.Recipient
# network
IsNetworkLive = if Network::Live = True then return (200) else (500)
# staking

# governance

# charfield

# address

# nft
NFT.Address = NFT::Address
NFT.Creator = NFT::Creator
NFT.Publish = NFT::Publish
NFT.Republish = NFT::Republish
NFT.GetCost = NFT::GetCost
# post
