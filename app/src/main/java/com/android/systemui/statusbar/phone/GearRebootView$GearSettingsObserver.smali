.class Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GearRebootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/GearRebootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GearSettingsObserver"
.end annotation


# instance fields
.field mColorUri:Landroid/net/Uri;

.field mVisibilityUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/GearRebootView;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    # getter for: Lcom/android/systemui/statusbar/phone/GearRebootView;->mVisibilityKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$000(Lcom/android/systemui/statusbar/phone/GearRebootView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mVisibilityUri:Landroid/net/Uri;

    .line 88
    # getter for: Lcom/android/systemui/statusbar/phone/GearRebootView;->mColorKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$100(Lcom/android/systemui/statusbar/phone/GearRebootView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mColorUri:Landroid/net/Uri;

    .line 90
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mVisibilityUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    # invokes: Lcom/android/systemui/statusbar/phone/GearRebootView;->updateViewVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$200(Lcom/android/systemui/statusbar/phone/GearRebootView;)V

    .line 100
    :cond_10
    :goto_10
    return-void

    .line 97
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->mColorUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/GearRebootView$GearSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/GearRebootView;

    # invokes: Lcom/android/systemui/statusbar/phone/GearRebootView;->updateViewColorOverlay()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/GearRebootView;->access$300(Lcom/android/systemui/statusbar/phone/GearRebootView;)V

    goto :goto_10
.end method
