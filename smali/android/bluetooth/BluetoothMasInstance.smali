.class public final Landroid/bluetooth/BluetoothMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMasInstance$MessageType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothMasInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannel:I

.field private final blacklist mId:I

.field private final blacklist mMsgTypes:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothMasInstance$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothMasInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "msgTypes"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    .line 32
    iput-object p2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    .line 33
    iput p3, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    .line 34
    iput p4, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Landroid/bluetooth/BluetoothMasInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    move-object v2, p1

    check-cast v2, Landroid/bluetooth/BluetoothMasInstance;

    iget v2, v2, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 42
    :cond_1
    return v1
.end method

.method public blacklist getChannel()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    return v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    return v0
.end method

.method public blacklist getMsgTypes()I
    .locals 1

    .line 101
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 47
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist msgSupported(I)Z
    .locals 1
    .param p1, "msg"    # I

    .line 105
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
