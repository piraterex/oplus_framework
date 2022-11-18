.class public interface abstract Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.super Ljava/lang/Object;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteViewsFactory"
.end annotation


# virtual methods
.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDataSetChanged()V
.end method

.method public abstract whitelist onDestroy()V
.end method
