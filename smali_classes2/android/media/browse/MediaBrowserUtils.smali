.class public Landroid/media/browse/MediaBrowserUtils;
.super Ljava/lang/Object;
.source "MediaBrowserUtils.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 29
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_2

    .line 32
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 33
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 32
    :goto_0
    return v0

    .line 34
    :cond_2
    if-nez p1, :cond_4

    .line 35
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 36
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    .line 35
    :goto_1
    return v0

    .line 38
    :cond_4
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 39
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_5

    .line 40
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 41
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 38
    :goto_2
    return v0
.end method

.method public static greylist-max-o hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .line 49
    const-string v0, "android.media.browse.extra.PAGE"

    const/4 v1, -0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "page1":I
    :goto_0
    if-nez p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, "page2":I
    :goto_1
    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    if-nez p0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 52
    .local v4, "pageSize1":I
    :goto_2
    if-nez p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 55
    .local v3, "pageSize2":I
    :goto_3
    const/4 v5, 0x1

    if-eq v2, v1, :cond_5

    if-ne v4, v1, :cond_4

    goto :goto_4

    .line 59
    :cond_4
    mul-int v6, v4, v2

    .line 60
    .local v6, "startIndex1":I
    add-int v7, v6, v4

    sub-int/2addr v7, v5

    .local v7, "endIndex1":I
    goto :goto_5

    .line 56
    .end local v6    # "startIndex1":I
    .end local v7    # "endIndex1":I
    :cond_5
    :goto_4
    const/4 v6, 0x0

    .line 57
    .restart local v6    # "startIndex1":I
    const v7, 0x7fffffff

    .line 63
    .restart local v7    # "endIndex1":I
    :goto_5
    if-eq v0, v1, :cond_7

    if-ne v3, v1, :cond_6

    goto :goto_6

    .line 67
    :cond_6
    mul-int v1, v3, v0

    .line 68
    .local v1, "startIndex2":I
    add-int v8, v1, v3

    sub-int/2addr v8, v5

    .local v8, "endIndex2":I
    goto :goto_7

    .line 64
    .end local v1    # "startIndex2":I
    .end local v8    # "endIndex2":I
    :cond_7
    :goto_6
    const/4 v1, 0x0

    .line 65
    .restart local v1    # "startIndex2":I
    const v8, 0x7fffffff

    .line 71
    .restart local v8    # "endIndex2":I
    :goto_7
    if-gt v6, v1, :cond_8

    if-gt v1, v7, :cond_8

    .line 72
    return v5

    .line 73
    :cond_8
    if-gt v6, v8, :cond_9

    if-gt v8, v7, :cond_9

    .line 74
    return v5

    .line 76
    :cond_9
    const/4 v5, 0x0

    return v5
.end method
