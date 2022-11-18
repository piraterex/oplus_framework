.class public abstract Lcom/oplus/eventhub/sdk/EventCallback;
.super Lcom/oplus/eventhub/sdk/aidl/IEventCallback$Stub;
.source "EventCallback.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/oplus/eventhub/sdk/aidl/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onEventStateChanged(Lcom/oplus/eventhub/sdk/aidl/DeviceEventResult;)V
.end method
