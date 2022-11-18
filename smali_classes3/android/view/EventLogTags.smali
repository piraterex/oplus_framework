.class public Landroid/view/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final blacklist VIEW_ENQUEUE_INPUT_EVENT:I = 0xf232


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeViewEnqueueInputEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "eventtype"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0xf232

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 18
    return-void
.end method
