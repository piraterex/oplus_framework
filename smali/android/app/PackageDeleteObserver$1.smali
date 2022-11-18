.class Landroid/app/PackageDeleteObserver$1;
.super Landroid/content/pm/IPackageDeleteObserver2$Stub;
.source "PackageDeleteObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PackageDeleteObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/PackageDeleteObserver;


# direct methods
.method constructor blacklist <init>(Landroid/app/PackageDeleteObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PackageDeleteObserver;

    .line 31
    iput-object p1, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/PackageDeleteObserver;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public blacklist onUserActionRequired(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Landroid/app/PackageDeleteObserver$1;->this$0:Landroid/app/PackageDeleteObserver;

    invoke-virtual {v0, p1}, Landroid/app/PackageDeleteObserver;->onUserActionRequired(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
