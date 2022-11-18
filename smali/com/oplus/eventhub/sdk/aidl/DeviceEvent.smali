.class public Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
.super Ljava/lang/Object;
.source "DeviceEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceEvent"


# instance fields
.field private blacklist mEventStateType:I

.field private blacklist mEventType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventStateType"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    .line 73
    iput p2, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(IILcom/oplus/eventhub/sdk/aidl/DeviceEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;-><init>(II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 86
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 90
    return v1

    .line 92
    :cond_1
    instance-of v2, p1, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    if-eqz v2, :cond_3

    .line 93
    move-object v2, p1

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;

    .line 94
    .local v2, "event":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    iget v3, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    invoke-virtual {v2}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    .line 95
    invoke-virtual {v2}, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->getEventStateType()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    .line 94
    :goto_0
    return v0

    .line 97
    .end local v2    # "event":Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;
    :cond_3
    return v0
.end method

.method public whitelist getEventStateType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    return v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 130
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/DeviceEvent;->mEventStateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
