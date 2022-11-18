.class public abstract Landroid/service/dreams/DreamManagerInternal;
.super Ljava/lang/Object;
.source "DreamManagerInternal.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getActiveDreamComponent(Z)Landroid/content/ComponentName;
.end method

.method public abstract greylist-max-o isDreaming()Z
.end method

.method public abstract greylist-max-o startDream(Z)V
.end method

.method public abstract greylist-max-o stopDream(Z)V
.end method
