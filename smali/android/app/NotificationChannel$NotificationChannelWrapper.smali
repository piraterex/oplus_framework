.class Landroid/app/NotificationChannel$NotificationChannelWrapper;
.super Ljava/lang/Object;
.source "NotificationChannel.java"

# interfaces
.implements Landroid/app/INotificationChannelWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationChannelWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/NotificationChannel;


# direct methods
.method private constructor blacklist <init>(Landroid/app/NotificationChannel;)V
    .locals 0

    .line 1420
    iput-object p1, p0, Landroid/app/NotificationChannel$NotificationChannelWrapper;->this$0:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel$NotificationChannelWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/NotificationChannel$NotificationChannelWrapper;-><init>(Landroid/app/NotificationChannel;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Landroid/app/INotificationChannelExt;
    .locals 1

    .line 1423
    iget-object v0, p0, Landroid/app/NotificationChannel$NotificationChannelWrapper;->this$0:Landroid/app/NotificationChannel;

    invoke-static {v0}, Landroid/app/NotificationChannel;->-$$Nest$fgetmOplusNotificationChannelExt(Landroid/app/NotificationChannel;)Landroid/app/INotificationChannelExt;

    move-result-object v0

    return-object v0
.end method
