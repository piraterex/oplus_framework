.class public final synthetic Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/textclassifier/TextClassifierService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/textclassifier/TextClassifierService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/textclassifier/TextClassifierService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda0;->f$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0}, Landroid/service/textclassifier/TextClassifierService;->onConnected()V

    return-void
.end method
