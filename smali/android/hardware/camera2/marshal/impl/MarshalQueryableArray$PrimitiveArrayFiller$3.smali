.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$3;
.super Ljava/lang/Object;
.source "MarshalQueryableArray.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->getPrimitiveArrayFiller(Ljava/lang/Class;)Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillPosition(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 71
    .local v0, "i":J
    invoke-static {p1, p2, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    .line 72
    return-void
.end method
