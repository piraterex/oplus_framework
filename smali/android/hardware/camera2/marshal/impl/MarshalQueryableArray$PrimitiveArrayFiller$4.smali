.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$4;
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillPosition(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    .line 79
    .local v0, "i":D
    invoke-static {p1, p2, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    .line 80
    return-void
.end method
