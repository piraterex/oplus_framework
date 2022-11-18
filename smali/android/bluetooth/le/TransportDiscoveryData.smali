.class public final Landroid/bluetooth/le/TransportDiscoveryData;
.super Ljava/lang/Object;
.source "TransportDiscoveryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/TransportDiscoveryData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "TransportDiscoveryData"


# instance fields
.field private final blacklist mTransportBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransportDataType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/bluetooth/le/TransportDiscoveryData$1;

    invoke-direct {v0}, Landroid/bluetooth/le/TransportDiscoveryData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/TransportDiscoveryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "transportDataType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p2, "transportBlocks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/TransportBlock;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 54
    iput-object p2, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 55
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 89
    sget-object v0, Landroid/bluetooth/le/TransportBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/TransportDiscoveryData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/TransportDiscoveryData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([B)V
    .locals 7
    .param p1, "transportDiscoveryData"    # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    goto :goto_0

    .line 70
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    .line 73
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 75
    .local v1, "orgId":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 76
    .local v2, "tdsFlags":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 77
    .local v3, "transportDataLength":I
    new-array v4, v3, [B

    .line 78
    .local v4, "transportData":[B
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v5, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    new-instance v6, Landroid/bluetooth/le/TransportBlock;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/bluetooth/le/TransportBlock;-><init>(III[B)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .end local v1    # "orgId":I
    .end local v2    # "tdsFlags":I
    .end local v3    # "transportDataLength":I
    .end local v4    # "transportData":[B
    goto :goto_0

    .line 84
    :cond_1
    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/BufferUnderflowException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransportDiscoveryData"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    if-ne p0, p1, :cond_0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/TransportDiscoveryData;

    .line 112
    .local v0, "other":Landroid/bluetooth/le/TransportDiscoveryData;
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/le/TransportDiscoveryData;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 109
    .end local v0    # "other":Landroid/bluetooth/le/TransportDiscoveryData;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTransportBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/TransportBlock;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    return-object v0
.end method

.method public whitelist getTransportDataType()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    return v0
.end method

.method public whitelist toByteArray()[B
    .locals 4

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->totalBytes()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->getTransportBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportBlock;

    .line 165
    .local v2, "transportBlock":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlock;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    nop

    .end local v2    # "transportBlock":Landroid/bluetooth/le/TransportBlock;
    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 168
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 169
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

    const-string v2, "TransportDiscoveryData"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist totalBytes()I
    .locals 4

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "size":I
    invoke-virtual {p0}, Landroid/bluetooth/le/TransportDiscoveryData;->getTransportBlocks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/TransportBlock;

    .line 180
    .local v2, "transportBlock":Landroid/bluetooth/le/TransportBlock;
    invoke-virtual {v2}, Landroid/bluetooth/le/TransportBlock;->totalBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 181
    .end local v2    # "transportBlock":Landroid/bluetooth/le/TransportBlock;
    goto :goto_0

    .line 182
    :cond_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportDataType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Landroid/bluetooth/le/TransportDiscoveryData;->mTransportBlocks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 119
    return-void
.end method
