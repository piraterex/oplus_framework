.class Landroid/content/pm/IPackagePartitionsWrapper$1;
.super Ljava/lang/Object;
.source "IPackagePartitionsWrapper.java"

# interfaces
.implements Landroid/content/pm/IPackagePartitionsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/IPackagePartitionsWrapper;->getExtImpl()Landroid/content/pm/IPackagePartitionsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/IPackagePartitionsWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/IPackagePartitionsWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/pm/IPackagePartitionsWrapper;

    .line 24
    iput-object p1, p0, Landroid/content/pm/IPackagePartitionsWrapper$1;->this$0:Landroid/content/pm/IPackagePartitionsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
