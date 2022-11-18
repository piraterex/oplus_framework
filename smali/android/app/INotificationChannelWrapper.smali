.class public interface abstract Landroid/app/INotificationChannelWrapper;
.super Ljava/lang/Object;
.source "INotificationChannelWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/app/INotificationChannelExt;
    .locals 1

    .line 21
    new-instance v0, Landroid/app/INotificationChannelWrapper$1;

    invoke-direct {v0, p0}, Landroid/app/INotificationChannelWrapper$1;-><init>(Landroid/app/INotificationChannelWrapper;)V

    return-object v0
.end method
