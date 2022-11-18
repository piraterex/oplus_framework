.class Landroid/content/pm/PackageManager$3;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/PackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;

    .line 10605
    iput-object p1, p0, Landroid/content/pm/PackageManager$3;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
