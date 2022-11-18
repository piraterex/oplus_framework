.class Landroid/app/AppOpsManager$5;
.super Lcom/android/internal/app/IAppOpsNotedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpNotedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .line 8355
    iput-object p1, p0, Landroid/app/AppOpsManager$5;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsNotedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "mode"    # I

    .line 8359
    iget-object v0, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpNotedListener;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManager$OnOpNotedListener;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    .line 8360
    return-void
.end method
