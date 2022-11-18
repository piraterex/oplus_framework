.class public abstract Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.super Ljava/lang/Object;
.source "NotSelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 1
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifiedScore()F
    .locals 1

    .line 78
    const v0, -0x42333333    # -0.1f

    return v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isPinned()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 1
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 54
    const/4 v0, 0x0

    return v0
.end method
