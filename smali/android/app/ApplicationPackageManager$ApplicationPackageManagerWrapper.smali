.class Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/app/IApplicationPackageManagerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationPackageManagerWrapper"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationPackageManagerWrapper"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 0

    .line 3961
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ApplicationPackageManager;Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper;-><init>(Landroid/app/ApplicationPackageManager;)V

    return-void
.end method


# virtual methods
.method public blacklist getCachedIcon(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/Object;

    .line 3973
    instance-of v0, p1, Landroid/app/ApplicationPackageManager$ResourceName;

    if-eqz v0, :cond_0

    .line 3974
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper;->this$0:Landroid/app/ApplicationPackageManager;

    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-static {v0, v1}, Landroid/app/ApplicationPackageManager;->-$$Nest$mgetCachedIcon(Landroid/app/ApplicationPackageManager;Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3976
    :cond_0
    const-string v0, "ApplicationPackageManagerWrapper"

    const-string v1, "getCachedIcon resourceName is not ResourceName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist newResourceName(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 3967
    new-instance v0, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v0, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public blacklist putCachedIcon(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/Object;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 3984
    instance-of v0, p1, Landroid/app/ApplicationPackageManager$ResourceName;

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$ApplicationPackageManagerWrapper;->this$0:Landroid/app/ApplicationPackageManager;

    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-static {v0, v1, p2}, Landroid/app/ApplicationPackageManager;->-$$Nest$mputCachedIcon(Landroid/app/ApplicationPackageManager;Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3987
    :cond_0
    const-string v0, "ApplicationPackageManagerWrapper"

    const-string/jumbo v1, "putCachedIcon resourceName is not ResourceName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    :goto_0
    return-void
.end method
