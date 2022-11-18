.class public interface abstract Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
.super Ljava/lang/Object;
.source "RcsCapabilityExchangeImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscribeResponseCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCommandError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onNetworkResponse(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onResourceTerminated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method

.method public abstract whitelist onTerminated(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation
.end method
