.class public interface abstract Landroid/content/pm/IActivityInfoWrapper;
.super Ljava/lang/Object;
.source "IActivityInfoWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/content/pm/IActivityInfoExt;
    .locals 1

    .line 22
    new-instance v0, Landroid/content/pm/IActivityInfoWrapper$1;

    invoke-direct {v0, p0}, Landroid/content/pm/IActivityInfoWrapper$1;-><init>(Landroid/content/pm/IActivityInfoWrapper;)V

    return-object v0
.end method
