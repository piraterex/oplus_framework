.class public interface abstract Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
.super Ljava/lang/Object;
.source "RcsUceAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapabilitiesCallback"
.end annotation


# virtual methods
.method public abstract whitelist onCapabilitiesReceived(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onComplete()V
.end method

.method public abstract whitelist onError(IJ)V
.end method
