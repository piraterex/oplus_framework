.class public final Landroid/media/AudioTimestamp;
.super Ljava/lang/Object;
.source "AudioTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTimestamp$Timebase;
    }
.end annotation


# static fields
.field public static final whitelist TIMEBASE_BOOTTIME:I = 0x1

.field public static final whitelist TIMEBASE_MONOTONIC:I


# instance fields
.field public whitelist framePosition:J

.field public whitelist nanoTime:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
