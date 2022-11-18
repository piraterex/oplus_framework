.class Landroid/text/format/DateTimeFormat;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/DateTimeFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/text/format/DateTimeFormat$FormatterCache;

    invoke-direct {v0}, Landroid/text/format/DateTimeFormat$FormatterCache;-><init>()V

    sput-object v0, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static blacklist format(Landroid/icu/util/ULocale;Landroid/icu/util/Calendar;ILandroid/icu/text/DisplayContext;)Ljava/lang/String;
    .locals 7
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "time"    # Landroid/icu/util/Calendar;
    .param p2, "flags"    # I
    .param p3, "displayContext"    # Landroid/icu/text/DisplayContext;

    .line 46
    invoke-static {p1, p2}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "skeleton":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/text/format/DateTimeFormat;->CACHED_FORMATTERS:Landroid/text/format/DateTimeFormat$FormatterCache;

    monitor-enter v2

    .line 49
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/text/format/DateTimeFormat$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateFormat;

    .line 50
    .local v3, "formatter":Landroid/icu/text/DateFormat;
    if-nez v3, :cond_0

    .line 51
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v4

    .line 53
    .local v4, "generator":Landroid/icu/text/DateTimePatternGenerator;
    new-instance v5, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object v3, v5

    .line 54
    invoke-virtual {v2, v1, v3}, Landroid/text/format/DateTimeFormat$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v4    # "generator":Landroid/icu/text/DateTimePatternGenerator;
    :cond_0
    invoke-virtual {v3, p3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 57
    invoke-virtual {v3, p1}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    monitor-exit v2

    return-object v4

    .line 58
    .end local v3    # "formatter":Landroid/icu/text/DateFormat;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
