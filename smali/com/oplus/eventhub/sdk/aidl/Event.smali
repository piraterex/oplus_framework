.class public Lcom/oplus/eventhub/sdk/aidl/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "Event"


# instance fields
.field private blacklist mEventType:I

.field private blacklist mExtra:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/oplus/eventhub/sdk/aidl/Event$1;

    invoke-direct {v0}, Lcom/oplus/eventhub/sdk/aidl/Event$1;-><init>()V

    sput-object v0, Lcom/oplus/eventhub/sdk/aidl/Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "extra"    # Landroid/os/Bundle;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    .line 35
    iput-object p2, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mExtra:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mExtra:Landroid/os/Bundle;

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    return v0

    .line 51
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 52
    return v1

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/oplus/eventhub/sdk/aidl/Event;

    if-eqz v2, :cond_3

    .line 55
    move-object v2, p1

    check-cast v2, Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 56
    .local v2, "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    iget v3, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    invoke-virtual {v2}, Lcom/oplus/eventhub/sdk/aidl/Event;->getEventType()I

    move-result v4

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 58
    .end local v2    # "event":Lcom/oplus/eventhub/sdk/aidl/Event;
    :cond_3
    return v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    return v0
.end method

.method public whitelist getExtra()Landroid/os/Bundle;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 73
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event{mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mExtra:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 101
    iget v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/oplus/eventhub/sdk/aidl/Event;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method
