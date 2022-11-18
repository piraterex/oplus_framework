.class public Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;
.super Ljava/lang/Object;
.source "DeviceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEventStateType:I

.field private blacklist mEventType:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventType:I

    .line 36
    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventStateType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    .locals 4

    .line 59
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventType:I

    const-string v1, "DeviceEvent"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 61
    const-string v0, "EventType not yet configured."

    invoke-static {v1, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventStateType:I

    if-ne v0, v2, :cond_1

    .line 64
    const-string/jumbo v0, "use default state type."

    invoke-static {v1, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventStateType:I

    .line 67
    :cond_1
    :goto_0
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventType:I

    iget v2, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventStateType:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;-><init>(IILcom/oplus/eventhub/sdk/aidl/DeviceEvent-IA;)V

    return-object v0
.end method

.method public whitelist setEventStateType(I)Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;
    .locals 2
    .param p1, "eventStateType"    # I

    .line 48
    if-eqz p1, :cond_0

    .line 49
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 51
    const-string v0, "DeviceEvent"

    const-string v1, "Invalid stateType."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventStateType:I

    .line 55
    return-object p0
.end method

.method public whitelist setEventType(I)Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;
    .locals 2
    .param p1, "eventType"    # I

    .line 39
    sget-object v0, Lcom/oplus/eventhub/sdk/aidl/EventType;->sEventTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string v0, "DeviceEvent"

    const-string v1, "Invalid event type, not yet supported."

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;->mEventType:I

    .line 44
    return-object p0
.end method
