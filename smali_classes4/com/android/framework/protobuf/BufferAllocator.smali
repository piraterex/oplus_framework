.class abstract Lcom/android/framework/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# static fields
.field private static final blacklist UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/framework/protobuf/BufferAllocator$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BufferAllocator$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/BufferAllocator;->UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist unpooled()Lcom/android/framework/protobuf/BufferAllocator;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/framework/protobuf/BufferAllocator;->UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method

.method public abstract blacklist allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method
