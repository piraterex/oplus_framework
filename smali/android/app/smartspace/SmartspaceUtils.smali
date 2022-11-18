.class public final Landroid/app/smartspace/SmartspaceUtils;
.super Ljava/lang/Object;
.source "SmartspaceUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static blacklist isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z
    .locals 1
    .param p0, "text"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 35
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z
    .locals 1
    .param p0, "text1"    # Landroid/app/smartspace/uitemplatedata/Text;
    .param p1, "text2"    # Landroid/app/smartspace/uitemplatedata/Text;

    .line 40
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/smartspace/uitemplatedata/Text;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 41
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 47
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 48
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
