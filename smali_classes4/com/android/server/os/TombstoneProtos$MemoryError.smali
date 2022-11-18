.class public final Lcom/android/server/os/TombstoneProtos$MemoryError;
.super Ljava/lang/Object;
.source "TombstoneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TombstoneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryError"
.end annotation


# static fields
.field public static final blacklist BUFFER_OVERFLOW:I = 0x4

.field public static final blacklist BUFFER_UNDERFLOW:I = 0x5

.field public static final blacklist DOUBLE_FREE:I = 0x2

.field public static final blacklist GWP_ASAN:I = 0x0

.field public static final blacklist HEAP:J = 0x10b00000003L

.field public static final blacklist INVALID_FREE:I = 0x3

.field public static final blacklist SCUDO:I = 0x1

.field public static final blacklist TOOL:J = 0x10e00000001L

.field public static final blacklist TYPE:J = 0x10e00000002L

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist USE_AFTER_FREE:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/os/TombstoneProtos;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/os/TombstoneProtos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/os/TombstoneProtos;

    .line 141
    iput-object p1, p0, Lcom/android/server/os/TombstoneProtos$MemoryError;->this$0:Lcom/android/server/os/TombstoneProtos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
