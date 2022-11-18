.class public final Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViolationInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist broadcastIntentAction:Ljava/lang/String;

.field public blacklist durationMillis:I

.field private final greylist-max-o mBinderStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPenaltyMask:I

.field private greylist-max-o mStackTrace:Ljava/lang/String;

.field private final greylist-max-o mViolation:Landroid/os/strictmode/Violation;

.field public blacklist numAnimationsRunning:I

.field public blacklist numInstances:J

.field public blacklist tags:[Ljava/lang/String;

.field public blacklist violationNumThisLoop:I

.field public blacklist violationUptimeMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I
    .locals 0

    iget p0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViolation(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;
    .locals 0

    iget-object p0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 3104
    new-instance v0, Landroid/os/StrictMode$ViolationInfo$1;

    invoke-direct {v0}, Landroid/os/StrictMode$ViolationInfo$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2986
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 2987
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;Z)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "unsetGatheringBit"    # Z

    .line 2995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 2852
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2855
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2877
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2996
    const-class v0, Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/strictmode/Violation;

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 2997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2998
    .local v0, "binderStackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    .line 3000
    .local v2, "traceElements":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 3001
    new-instance v4, Ljava/lang/StackTraceElement;

    .line 3003
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3004
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3005
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3007
    .local v4, "element":Ljava/lang/StackTraceElement;
    aput-object v4, v2, v3

    .line 3000
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3009
    .end local v3    # "j":I
    :cond_0
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 2998
    .end local v2    # "traceElements":[Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3011
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3012
    .local v1, "rawPenaltyMask":I
    if-eqz p2, :cond_2

    .line 3013
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    goto :goto_2

    .line 3015
    :cond_2
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 3017
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 3018
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 3019
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 3020
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 3021
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 3022
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 3023
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 3024
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/strictmode/Violation;I)V
    .locals 7
    .param p1, "tr"    # Landroid/os/strictmode/Violation;
    .param p2, "penaltyMask"    # I

    .line 2880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    .line 2852
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 2855
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2877
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2881
    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    .line 2882
    iput p2, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    .line 2883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 2884
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    move-result v0

    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 2885
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    move-result-object v0

    .line 2886
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2887
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 2889
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThisThreadSpanState()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/StrictMode$ThreadSpanState;

    .line 2890
    .local v1, "state":Landroid/os/StrictMode$ThreadSpanState;
    instance-of v2, p1, Landroid/os/strictmode/InstanceCountViolation;

    if-eqz v2, :cond_1

    .line 2891
    move-object v2, p1

    check-cast v2, Landroid/os/strictmode/InstanceCountViolation;

    invoke-virtual {v2}, Landroid/os/strictmode/InstanceCountViolation;->getNumberOfInstances()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    .line 2893
    :cond_1
    monitor-enter v1

    .line 2894
    :try_start_0
    iget v2, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2895
    .local v2, "spanActiveCount":I
    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 2896
    const/16 v2, 0x14

    .line 2898
    :cond_2
    if-eqz v2, :cond_3

    .line 2899
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 2900
    iget-object v3, v1, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2901
    .local v3, "iter":Landroid/os/StrictMode$Span;
    const/4 v4, 0x0

    .line 2902
    .local v4, "index":I
    :goto_0
    if-eqz v3, :cond_3

    if-ge v4, v2, :cond_3

    .line 2903
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-static {v3}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmName(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 2904
    add-int/lit8 v4, v4, 0x1

    .line 2905
    invoke-static {v3}, Landroid/os/StrictMode$Span;->-$$Nest$fgetmNext(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 2908
    .end local v2    # "spanActiveCount":I
    .end local v3    # "iter":Landroid/os/StrictMode$Span;
    .end local v4    # "index":I
    :cond_3
    monitor-exit v1

    .line 2909
    return-void

    .line 2908
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method greylist-max-o addLocalStack(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 2960
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 2961
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 3101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stackTrace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "penalty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3075
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "durationMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3078
    :cond_0
    iget-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numInstances: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3081
    :cond_1
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    if-eqz v0, :cond_2

    .line 3082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationNumThisLoop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3084
    :cond_2
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v0, :cond_3

    .line 3085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "numAnimationsRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3087
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "violationUptimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3088
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "broadcastIntentAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3091
    :cond_4
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 3092
    const/4 v1, 0x0

    .line 3093
    .local v1, "index":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 3094
    .local v4, "tag":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tag["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3093
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    goto :goto_0

    .line 3097
    .end local v6    # "index":I
    :cond_5
    return-void
.end method

.method public blacklist getStackTrace()Ljava/lang/String;
    .locals 9

    .line 2916
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2917
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2918
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 2919
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v2, v1}, Landroid/os/strictmode/Violation;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2920
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 2921
    .local v4, "traces":[Ljava/lang/StackTraceElement;
    const-string v5, "# via Binder call with stack:\n"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2922
    array-length v5, v4

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 2923
    .local v7, "traceElement":Ljava/lang/StackTraceElement;
    const-string v8, "\tat "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2924
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2925
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 2922
    .end local v7    # "traceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2927
    .end local v4    # "traces":[Ljava/lang/StackTraceElement;
    :cond_0
    goto :goto_0

    .line 2928
    :cond_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2929
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 2930
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    .line 2932
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_2
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getViolationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/strictmode/Violation;",
            ">;"
        }
    .end annotation

    .line 2936
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getViolationDetails()Ljava/lang/String;
    .locals 1

    .line 2946
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {v0}, Landroid/os/strictmode/Violation;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    .line 2965
    const/16 v0, 0x11

    .line 2966
    .local v0, "result":I
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    if-eqz v1, :cond_0

    .line 2967
    mul-int/lit8 v2, v0, 0x25

    invoke-virtual {v1}, Landroid/os/strictmode/Violation;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 2969
    :cond_0
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    if-eqz v1, :cond_1

    .line 2970
    mul-int/lit8 v0, v0, 0x25

    .line 2972
    :cond_1
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2973
    mul-int/lit8 v2, v0, 0x25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    .line 2975
    :cond_2
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2976
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 2977
    .local v4, "tag":Ljava/lang/String;
    mul-int/lit8 v5, v0, 0x25

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 2976
    .end local v4    # "tag":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2980
    :cond_3
    return v0
.end method

.method greylist-max-o penaltyEnabled(I)Z
    .locals 1
    .param p1, "p"    # I

    .line 2950
    iget v0, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3029
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mViolation:Landroid/os/strictmode/Violation;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3030
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3031
    iget-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->mBinderStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 3032
    .local v1, "traceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3034
    .local v4, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3033
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3039
    .end local v1    # "traceElements":[Ljava/lang/StackTraceElement;
    :cond_0
    goto :goto_0

    .line 3040
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3041
    .local v0, "start":I
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->mPenaltyMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3042
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3043
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3044
    iget v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3045
    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3046
    iget-wide v1, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 3047
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3048
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3049
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3069
    .local v1, "total":I
    return-void
.end method
