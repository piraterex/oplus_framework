.class public final synthetic Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:Ljava/lang/String;

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iput p2, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p6, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput p7, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 8

    iget-object v0, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    iget v1, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v5, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget v6, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$6:I

    iget v7, p0, Landroid/app/AppOpsManager$3$$ExternalSyntheticLambda0;->f$7:I

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$3;->lambda$opActiveChanged$0(Landroid/app/AppOpsManager$OnOpActiveChangedListener;IILjava/lang/String;ZLjava/lang/String;II)V

    return-void
.end method
