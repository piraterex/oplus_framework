.class public final Landroid/bluetooth/le/TransportBlock;
.super Ljava/lang/Object;
.source "TransportBlock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TransportBlock"


# instance fields
.field private final blacklist mOrgId:I

.field private final blacklist mTdsFlags:I

.field private final blacklist mTransportData:[B

.field private final blacklist mTransportDataLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/bluetooth/le/TransportBlock$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportBlock$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III[B)V
    .locals 0
    .param p1, "orgId"    # I
    .param p2, "tdsFlags"    # I
    .param p3, "transportDataLength"    # I
    .param p4, "transportData"    # [B

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    .line 54
    iput p2, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    .line 55
    iput p3, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    .line 56
    iput-object p4, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 57
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    .line 63
    if-lez v0, :cond_0

    .line 64
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    .line 69
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/TransportBlock-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/TransportBlock;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 94
    if-ne p0, p1, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/TransportBlock;

    .line 101
    .local v0, "other":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 98
    .end local v0    # "other":Landroid/bluetooth/le/TransportBlock;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOrgId()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    return v0
.end method

.method public whitelist getTdsFlags()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    return v0
.end method

.method public whitelist getTransportData()[B
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    return-object v0
.end method

.method public whitelist getTransportDataLength()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    return v0
.end method

.method public whitelist toByteArray()[B
    .locals 3

    .line 155
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportBlock;->totalBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    iget v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    iget-object v1, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 163
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/nio/BufferOverflowException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransportBlock"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist totalBytes()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    add-int/lit8 v0, v0, 0x3

    .line 175
    .local v0, "size":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mOrgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTdsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportDataLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/bluetooth/le/TransportBlock;->mTransportData:[B

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    :cond_0
    return-void
.end method
