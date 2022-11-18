.class Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;
.super Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;
.source "CapabilityExchangeAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

.field final synthetic blacklist val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    .line 115
    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    iput-object p2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .locals 3
    .param p1, "ownCapabilities"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isBlocked"    # Z

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 124
    throw v2
.end method

.method public blacklist respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 130
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    .line 133
    throw v2
.end method
