.class public interface abstract Lcom/android/internal/app/chooser/ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;


# virtual methods
.method public abstract blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract blacklist getModifiedScore()F
.end method

.method public blacklist isSimilar(Lcom/android/internal/app/chooser/ChooserTargetInfo;)Z
    .locals 5
    .param p1, "other"    # Lcom/android/internal/app/chooser/ChooserTargetInfo;

    .line 36
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    .line 39
    .local v1, "ct1":Landroid/service/chooser/ChooserTarget;
    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v2

    .line 43
    .local v2, "ct2":Landroid/service/chooser/ChooserTarget;
    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-interface {p0}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/chooser/ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_2
    return v0

    .line 43
    :cond_3
    :goto_0
    return v0
.end method
