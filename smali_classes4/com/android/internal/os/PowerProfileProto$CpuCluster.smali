.class public final Lcom/android/internal/os/PowerProfileProto$CpuCluster;
.super Ljava/lang/Object;
.source "PowerProfileProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CpuCluster"
.end annotation


# static fields
.field public static final blacklist CLUSTER_POWER:J = 0x10100000002L

.field public static final blacklist CORES:J = 0x10500000003L

.field public static final blacklist CORE_POWER:J = 0x20100000005L

.field public static final blacklist ID:J = 0x10500000001L

.field public static final blacklist SPEED:J = 0x20300000004L


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/PowerProfileProto;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfileProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/PowerProfileProto;

    .line 11
    iput-object p1, p0, Lcom/android/internal/os/PowerProfileProto$CpuCluster;->this$0:Lcom/android/internal/os/PowerProfileProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
