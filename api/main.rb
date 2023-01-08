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
Information = lambda { address = $address; charfield = $charfield; transaction = $transaction; post = $post; nft = $nft; network = $network; user = $user; send = $send; request = $request; transaction }
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
Request.Address = Request::Address
Request.Username = Request::Username
Request.Balance = Request::Balance
# transaction
Tx.GetID = Transaction::ID
Tx.GetHistory = Address::History || Username::History
Tx.GetInvolved = Transaction::Involved # get users involved in specified transaction
Tx.GetPrice = Transaction::Price
Tx.Status = if Tx::Status = True then return ("Complete") else ("Aborted")
Tx.Target = Transaction::Target, puts TxMain.Recipient # return complete address, username, and Base64 output string
Tx.PullInfo = Transaction::Information
# network
IsNetworkLive = if Network::Live = True then return (200) else (500)
Request.Peers = Network::Peers # returns in format `| address | username | amount_in_wallet |`
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
