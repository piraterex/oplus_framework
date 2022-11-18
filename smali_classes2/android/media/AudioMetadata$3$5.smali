.class Landroid/media/AudioMetadata$3$5;
.super Ljava/lang/Object;
.source "AudioMetadata.java"

# interfaces
.implements Landroid/media/AudioMetadata$DataPackage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/AudioMetadata$DataPackage<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioMetadata$3;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioMetadata$3;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioMetadata$3;

    .line 690
    iput-object p1, p0, Landroid/media/AudioMetadata$3$5;->this$0:Landroid/media/AudioMetadata$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .locals 0

    .line 690
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioMetadata$3$5;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/String;)Z
    .locals 2
    .param p1, "output"    # Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    .param p2, "obj"    # Ljava/lang/String;

    .line 711
    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 712
    .local v0, "valueArr":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->putInt(I)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 713
    invoke-virtual {p1, v0}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->put([B)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 714
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Landroid/media/AudioMetadata$3$5;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 694
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 695
    .local v0, "dataSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 696
    const/4 v1, 0x0

    return-object v1

    .line 698
    :cond_0
    new-array v1, v0, [B

    .line 699
    .local v1, "valueArr":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 700
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Landroid/media/AudioMetadata;->-$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 701
    .local v2, "value":Ljava/lang/String;
    return-object v2
.end method
