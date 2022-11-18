.class public Lcom/android/internal/os/PowerProfile$CpuClusterKey;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuClusterKey"
.end annotation


# instance fields
.field private final greylist-max-o clusterPowerKey:Ljava/lang/String;

.field private final greylist-max-o corePowerKey:Ljava/lang/String;

.field private final greylist-max-o freqKey:Ljava/lang/String;

.field private final greylist-max-o numCpus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetclusterPowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcorePowerKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfreqKey(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnumCpus(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "freqKey"    # Ljava/lang/String;
    .param p2, "clusterPowerKey"    # Ljava/lang/String;
    .param p3, "corePowerKey"    # Ljava/lang/String;
    .param p4, "numCpus"    # I

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->freqKey:Ljava/lang/String;

    .line 504
    iput-object p2, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->clusterPowerKey:Ljava/lang/String;

    .line 505
    iput-object p3, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->corePowerKey:Ljava/lang/String;

    .line 506
    iput p4, p0, Lcom/android/internal/os/PowerProfile$CpuClusterKey;->numCpus:I

    .line 507
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$CpuClusterKey-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/PowerProfile$CpuClusterKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
