.class public final Landroid/view/contentcapture/ContentCaptureHelper;
.super Ljava/lang/Object;
.source "ContentCaptureHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static blacklist sDebug:Z

.field public static blacklist sVerbose:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    const-class v0, Landroid/view/contentcapture/ContentCaptureHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains only static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDefaultLoggingLevel()I
    .locals 1

    .line 59
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public static blacklist getLoggingLevelAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "level"    # I

    .line 97
    packed-switch p0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :pswitch_0
    const-string v0, "VERBOSE"

    return-object v0

    .line 101
    :pswitch_1
    const-string v0, "DEBUG"

    return-object v0

    .line 99
    :pswitch_2
    const-string v0, "OFF"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist setLoggingLevel()V
    .locals 3

    .line 66
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    .line 67
    .local v0, "defaultLevel":I
    const-string v1, "content_capture"

    const-string v2, "logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "level":I
    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 70
    return-void
.end method

.method public static blacklist setLoggingLevel(I)V
    .locals 3
    .param p0, "level"    # I

    .line 76
    sget-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting logging level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureHelper;->getLoggingLevelAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 78
    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoggingLevel(): invalud level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 80
    :pswitch_0
    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 83
    :pswitch_1
    sput-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 84
    return-void

    .line 87
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist toList(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public static blacklist toSet(Ljava/util/List;)Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 122
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method
