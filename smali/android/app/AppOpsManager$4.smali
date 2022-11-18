.class Landroid/app/AppOpsManager$4;
.super Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .line 8285
    iput-object p1, p0, Landroid/app/AppOpsManager$4;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V
    .locals 11
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "mode"    # I
    .param p7, "startType"    # I
    .param p8, "attributionFlags"    # I
    .param p9, "attributionChainId"    # I

    .line 8290
    move-object v0, p0

    iget-object v1, v0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIII)V

    .line 8292
    return-void
.end method
