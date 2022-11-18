.class public Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BinderCallStats"
.end annotation


# static fields
.field static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist callCount:J

.field public blacklist methodName:Ljava/lang/String;

.field public blacklist recordedCallCount:J

.field public blacklist recordedCpuTimeMicros:J

.field public blacklist transactionCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 8896
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats$$ExternalSyntheticLambda0;-><init>()V

    .line 8897
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats$$ExternalSyntheticLambda1;-><init>()V

    .line 8898
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->COMPARATOR:Ljava/util/Comparator;

    .line 8896
    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 0

    .line 8895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist ensureMethodName(Lcom/android/internal/os/BinderTransactionNameResolver;)V
    .locals 2
    .param p1, "resolver"    # Lcom/android/internal/os/BinderTransactionNameResolver;

    .line 8933
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 8934
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    .line 8936
    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 8916
    instance-of v0, p1, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8917
    return v1

    .line 8919
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    .line 8920
    .local v0, "bcsk":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    iget v3, v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .locals 1

    .line 8924
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMethodName()Ljava/lang/String;
    .locals 1

    .line 8928
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 8911
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 8940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinderCallStats{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->callCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recordedCallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recorderCpuTimeMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
