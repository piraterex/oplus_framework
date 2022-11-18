.class Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/app/dialog/IAlertParamsWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertParamsWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController$AlertParams;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;-><init>(Lcom/android/internal/app/AlertController$AlertParams;)V

    return-void
.end method


# virtual methods
.method public blacklist getAlertParamsExt()Landroid/app/dialog/IAlertParamsExt;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$AlertParamsWrapper;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAlertParamsExt:Landroid/app/dialog/IAlertParamsExt;

    return-object v0
.end method
