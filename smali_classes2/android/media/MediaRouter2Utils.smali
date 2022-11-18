.class public Landroid/media/MediaRouter2Utils;
.super Ljava/lang/Object;
.source "MediaRouter2Utils.java"


# static fields
.field static final blacklist SEPARATOR:Ljava/lang/String; = ":"

.field static final blacklist TAG:Ljava/lang/String; = "MR2Utils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOriginalId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uniqueId"    # Ljava/lang/String;

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "MR2Utils"

    const-string v2, "getOriginalId: uniqueId shouldn\'t be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v1

    .line 81
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "firstIndexOfSeparator":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "providerId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    return-object v1

    .line 91
    :cond_2
    return-object v2

    .line 83
    .end local v2    # "providerId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static blacklist getProviderId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "uniqueId"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "MR2Utils"

    const-string v2, "getProviderId: uniqueId shouldn\'t be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v1

    .line 57
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "firstIndexOfSeparator":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 59
    return-object v1

    .line 62
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "providerId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    return-object v1

    .line 67
    :cond_2
    return-object v2
.end method

.method public static blacklist toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "providerId"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MR2Utils"

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "toUniqueId: providerId shouldn\'t be empty"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-object v1

    .line 38
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string/jumbo v0, "toUniqueId: id shouldn\'t be null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-object v1

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
