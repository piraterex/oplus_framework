.class Landroid/app/INotificationChannelWrapper$1;
.super Ljava/lang/Object;
.source "INotificationChannelWrapper.java"

# interfaces
.implements Landroid/app/INotificationChannelExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/INotificationChannelWrapper;->getExtImpl()Landroid/app/INotificationChannelExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/INotificationChannelWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/app/INotificationChannelWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/INotificationChannelWrapper;

    .line 21
    iput-object p1, p0, Landroid/app/INotificationChannelWrapper$1;->this$0:Landroid/app/INotificationChannelWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
