.class public Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulableEvent"
.end annotation


# instance fields
.field private volatile blacklist mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field private blacklist mTimestamp:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 98
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist getTimestamp()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-wide v0
.end method

.method public blacklist setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 113
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    .line 114
    return-void
.end method
