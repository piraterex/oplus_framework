.class Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Landroid/app/dialog/IAlertDialogBuilderWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertDialogBuilderWrapper"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AlertDialogBuilderWrapper"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AlertDialog$Builder;


# direct methods
.method private constructor blacklist <init>(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 1150
    iput-object p1, p0, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->this$0:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AlertDialog$Builder;Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;-><init>(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 1156
    iget-object v0, p0, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->this$0:Landroid/app/AlertDialog$Builder;

    invoke-static {v0}, Landroid/app/AlertDialog$Builder;->-$$Nest$fgetP(Landroid/app/AlertDialog$Builder;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1157
    iget-object v0, p0, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->this$0:Landroid/app/AlertDialog$Builder;

    invoke-static {v0}, Landroid/app/AlertDialog$Builder;->-$$Nest$fgetP(Landroid/app/AlertDialog$Builder;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v0

    .line 1158
    .local v0, "alertParams":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController$AlertParams;->getWrapper()Landroid/app/dialog/IAlertParamsWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/dialog/IAlertParamsWrapper;->getAlertParamsExt()Landroid/app/dialog/IAlertParamsExt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1159
    invoke-virtual {v0}, Lcom/android/internal/app/AlertController$AlertParams;->getWrapper()Landroid/app/dialog/IAlertParamsWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/dialog/IAlertParamsWrapper;->getAlertParamsExt()Landroid/app/dialog/IAlertParamsExt;

    move-result-object v1

    return-object v1

    .line 1162
    .end local v0    # "alertParams":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setDialogType(Landroid/app/AlertDialog$Builder;I)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "dialogType"    # I

    .line 1168
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;

    move-result-object v0

    .line 1169
    .local v0, "alertParamsExt":Landroid/app/dialog/IAlertParamsExt;
    if-eqz v0, :cond_0

    .line 1170
    invoke-interface {v0, p2}, Landroid/app/dialog/IAlertParamsExt;->setDialogType(I)V

    .line 1172
    :cond_0
    return-void
.end method

.method public blacklist setMessageNeedScroll(Landroid/app/AlertDialog$Builder;Z)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "messageNeedScroll"    # Z

    .line 1187
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;

    move-result-object v0

    .line 1188
    .local v0, "alertParamsExt":Landroid/app/dialog/IAlertParamsExt;
    if-eqz v0, :cond_0

    .line 1189
    invoke-interface {v0, p2}, Landroid/app/dialog/IAlertParamsExt;->setMessageNeedScroll(Z)V

    .line 1191
    :cond_0
    return-void
.end method

.method public blacklist setSummaries(Landroid/app/AlertDialog$Builder;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "summaryItems"    # [Ljava/lang/CharSequence;

    .line 1177
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder$AlertDialogBuilderWrapper;->getAlertParamsExt(Landroid/app/AlertDialog$Builder;)Landroid/app/dialog/IAlertParamsExt;

    move-result-object v0

    .line 1178
    .local v0, "alertParamsExt":Landroid/app/dialog/IAlertParamsExt;
    if-eqz v0, :cond_0

    .line 1179
    invoke-interface {v0, p3}, Landroid/app/dialog/IAlertParamsExt;->setSummaries([Ljava/lang/CharSequence;)V

    .line 1180
    invoke-interface {v0, p2}, Landroid/app/dialog/IAlertParamsExt;->setItems([Ljava/lang/CharSequence;)V

    .line 1182
    :cond_0
    return-void
.end method
