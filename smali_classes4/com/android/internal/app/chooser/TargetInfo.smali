.class public interface abstract Lcom/android/internal/app/chooser/TargetInfo;
.super Ljava/lang/Object;
.source "TargetInfo.java"


# virtual methods
.method public abstract blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
.end method

.method public abstract blacklist getAllSourceIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract blacklist getDisplayLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getExtendedInfo()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
.end method

.method public abstract blacklist getResolvedComponentName()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getResolvedIntent()Landroid/content/Intent;
.end method

.method public abstract blacklist isPinned()Z
.end method

.method public abstract blacklist isSuspended()Z
.end method

.method public abstract blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
.end method

.method public abstract blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
.end method

.method public abstract blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
.end method
