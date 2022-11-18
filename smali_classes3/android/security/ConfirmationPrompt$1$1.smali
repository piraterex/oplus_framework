.class Landroid/security/ConfirmationPrompt$1$1;
.super Ljava/lang/Object;
.source "ConfirmationPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/ConfirmationPrompt$1;->onCompleted(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/security/ConfirmationPrompt$1;

.field final synthetic blacklist val$callback:Landroid/security/ConfirmationCallback;

.field final synthetic blacklist val$dataThatWasConfirmed:[B

.field final synthetic blacklist val$result:I


# direct methods
.method constructor blacklist <init>(Landroid/security/ConfirmationPrompt$1;I[BLandroid/security/ConfirmationCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/security/ConfirmationPrompt$1;

    .line 144
    iput-object p1, p0, Landroid/security/ConfirmationPrompt$1$1;->this$1:Landroid/security/ConfirmationPrompt$1;

    iput p2, p0, Landroid/security/ConfirmationPrompt$1$1;->val$result:I

    iput-object p3, p0, Landroid/security/ConfirmationPrompt$1$1;->val$dataThatWasConfirmed:[B

    iput-object p4, p0, Landroid/security/ConfirmationPrompt$1$1;->val$callback:Landroid/security/ConfirmationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 146
    iget-object v0, p0, Landroid/security/ConfirmationPrompt$1$1;->this$1:Landroid/security/ConfirmationPrompt$1;

    iget-object v0, v0, Landroid/security/ConfirmationPrompt$1;->this$0:Landroid/security/ConfirmationPrompt;

    iget v1, p0, Landroid/security/ConfirmationPrompt$1$1;->val$result:I

    iget-object v2, p0, Landroid/security/ConfirmationPrompt$1$1;->val$dataThatWasConfirmed:[B

    iget-object v3, p0, Landroid/security/ConfirmationPrompt$1$1;->val$callback:Landroid/security/ConfirmationCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/security/ConfirmationPrompt;->-$$Nest$mdoCallback(Landroid/security/ConfirmationPrompt;I[BLandroid/security/ConfirmationCallback;)V

    .line 147
    return-void
.end method
