.class Landroid/app/AppOpsManager$3;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .line 8207
    iput-object p1, p0, Landroid/app/AppOpsManager$3;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V
    .locals 13
    .param p0, "callback"    # Landroid/app/AppOpsManager$OnOpActiveChangedListener;
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 8213
    move-object v8, p0

    move v9, p1

    instance-of v0, v8, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    if-eqz v0, :cond_0

    .line 8214
    move-object v0, v8

    check-cast v0, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;

    move v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-interface {v0, p1, p2, v11, v12}, Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;->onOpActiveChanged(IILjava/lang/String;Z)V

    goto :goto_0

    .line 8213
    :cond_0
    move v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 8217
    :goto_0
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    if-eqz v0, :cond_1

    .line 8218
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsOpToString()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v9

    move-object v0, p0

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManager$OnOpActiveChangedListener;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    .line 8221
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 12
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "active"    # Z
    .param p6, "attributionFlags"    # I
    .param p7, "attributionChainId"    # I

    .line 8212
    move-object v0, p0

    iget-object v1, v0, Landroid/app/AppOpsManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Landroid/app/AppOpsManager$3;->val$callback:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v11, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;

    move-object v2, v11

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V

    invoke-interface {v1, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8222
    return-void
.end method
