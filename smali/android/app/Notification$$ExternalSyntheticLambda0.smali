.class public final synthetic Landroid/app/Notification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/PendingIntent$OnMarshaledListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/Notification;

.field public final synthetic blacklist f$1:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/Notification;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification;

    iput-object p2, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final blacklist onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$0:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$$ExternalSyntheticLambda0;->f$1:Landroid/os/Parcel;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/Notification;->lambda$writeToParcel$0$android-app-Notification(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method
