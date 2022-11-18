.class final Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
.super Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillFieldClassificationServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/autofill/AutofillFieldClassificationService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;)V
    .locals 0

    .line 288
    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-direct {p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;)V

    return-void
.end method

.method static synthetic blacklist lambda$calculateScores$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/RemoteCallback;
    .param p2, "x$1"    # Ljava/util/List;
    .param p3, "x$2"    # [Ljava/lang/String;
    .param p4, "x$3"    # [Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Landroid/os/Bundle;
    .param p7, "x$6"    # Ljava/util/Map;
    .param p8, "x$7"    # Ljava/util/Map;

    .line 296
    move-object v0, p0

    check-cast v0, Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$mcalculateScores(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "userDataValues"    # [Ljava/lang/String;
    .param p4, "categoryIds"    # [Ljava/lang/String;
    .param p5, "defaultAlgorithm"    # Ljava/lang/String;
    .param p6, "defaultArgs"    # Landroid/os/Bundle;
    .param p7, "algorithms"    # Ljava/util/Map;
    .param p8, "args"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    .local p2, "actualValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    move-object v0, p0

    iget-object v1, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-static {v1}, Landroid/service/autofill/AutofillFieldClassificationService;->-$$Nest$fgetmHandler(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;-><init>()V

    iget-object v3, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method
