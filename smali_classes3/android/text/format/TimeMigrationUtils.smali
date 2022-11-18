.class public Landroid/text/format/TimeMigrationUtils;
.super Ljava/lang/Object;
.source "TimeMigrationUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist formatMillisWithFixedFormat(J)Ljava/lang/String;
    .locals 1
    .param p0, "timeMillis"    # J

    .line 38
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/text/format/TimeFormatter;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
