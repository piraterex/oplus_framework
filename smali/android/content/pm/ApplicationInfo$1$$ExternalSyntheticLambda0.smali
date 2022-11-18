.class public final synthetic Landroid/content/pm/ApplicationInfo$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/Parcel$SquashReadHelper;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/content/pm/ApplicationInfo$1;->lambda$createFromParcel$0(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
