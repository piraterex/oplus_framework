.class public final Landroid/app/AppCompatCallbacks;
.super Ljava/lang/Object;
.source "AppCompatCallbacks.java"

# interfaces
.implements Landroid/compat/Compatibility$BehaviorChangeDelegate;


# instance fields
.field private final blacklist mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final blacklist mDisabledChanges:[J


# direct methods
.method private constructor blacklist <init>([J)V
    .locals 2
    .param p1, "disabledChanges"    # [J

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 47
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 49
    return-void
.end method

.method public static blacklist install([J)V
    .locals 1
    .param p0, "disabledChanges"    # [J

    .line 41
    new-instance v0, Landroid/app/AppCompatCallbacks;

    invoke-direct {v0, p0}, Landroid/app/AppCompatCallbacks;-><init>([J)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V

    .line 42
    return-void
.end method

.method private blacklist reportChange(JI)V
    .locals 2
    .param p1, "changeId"    # J
    .param p3, "state"    # I

    .line 66
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 67
    .local v0, "uid":I
    iget-object v1, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJI)V

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist test-api isChangeEnabled(J)Z
    .locals 1
    .param p1, "changeId"    # J

    .line 56
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    .line 59
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist test-api onChangeReported(J)V
    .locals 1
    .param p1, "changeId"    # J

    .line 52
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->reportChange(JI)V

    .line 53
    return-void
.end method
