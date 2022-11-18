.class abstract Lcom/android/framework/protobuf/BinaryReader;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
    }
.end annotation


# static fields
.field private static final blacklist FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final blacklist FIXED64_MULTIPLE_MASK:I = 0x7


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/BinaryReader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/framework/protobuf/BinaryReader$1;

    .line 52
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader;-><init>()V

    return-void
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;Z)Lcom/android/framework/protobuf/BinaryReader;
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "bufferIsImmutable"    # Z

    .line 68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Direct buffers not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist getTotalBytesRead()I
.end method

.method public blacklist shouldDiscardUnknownFields()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method
