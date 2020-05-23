# Unmixable inputs / MixIn count is too big

### I can't send a transaction, what's going on?

When you receive a transaction, the amount is split into thousands, hundreds, tens, ones, etc. So if you are sent 1234 TC, this is stored as `1000, 200, 30, 40` in your wallet.

When you want to send a transaction, regardless of how much you are sending, you have to use these stored amounts. If we wanted to send 10 TC, and you only have a 1000 TC *input*, you have to use this.

### Ok, but how does this relate to my transactions failing?

Depending upon the rules of your network, a *mixin* level may be enforced. This does some fancy cryptography to hide your transaction outputs among others, so people can't tell who sent the transaction.

To do this, we need to match your *input* with other *inputs*. So, in the previous example, where we were sending 10 TC, with an 1000 TC input, we will need some other 1000 TC inputs to mix with.

In the case of TC, the mixin is 3, so we need 3 other 1000 TC inputs to create our transaction.

The error occurs when there aren't enough of these inputs.

### Why aren't there enough of these inputs?

As I mentioned before, when you send a transaction, it is split into thousands, hundreds, etc. This makes new inputs of this amount. If enough transactions of this size have not been sent, your transaction will fail.

This often occurs in new networks, as very few transactions have been sent, or for people who have very large inputs - as not many people have enough funds to create an input of that amount.

### How do I make more inputs of this amount?

To create another input of the same amount, someone must send that amount. If you need an input of 8,000,000 TC, someone must send an amount at least this large. The amount they send must include 8,000,000 TC as the 'Million' value.

There are a couple of ways to create this amount:

* A transaction of exactly 8,000,000 TC would work - creates 1 input of 8,000,000 TC.
* A transaction of 8,123,456 TC would work - creates inputs, `8000000, 100000, 20000, 3000, 400, 50, 60`
* A transaction of 18,000,000 TC would work - creates inputs of `10000000, 8000000`.

Of course, this is a little tricky since you can't send your own funds. Sometimes, you'll just have to wait - or try and get someone to send transactions of exactly that amount.

### How can I track mixable amounts?

The easiest way is by using this blockchain explorer - https://traaittchain.com/mixable.html

This shows the amount, the amount of existing outputs of that amount, and the date, if applicable, when the amount became 'mixable'.

### Why do some of my transactions work, but others don't?

The wallet selects the inputs to use randomly. If your wallet is comprised of the inputs `100, 200, 300, 400`, you want to send 1 TC, and the `400` input is unmixable, 25% of the time, that input will get selected randomly, and fail the transaction.

However, if you were wanting to send your full balance - that input would be selected 100% of the time, so your transaction will always fail.